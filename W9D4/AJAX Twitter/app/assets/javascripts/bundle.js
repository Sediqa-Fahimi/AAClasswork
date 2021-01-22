/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./frontend/api_util.js":
/*!******************************!*\
  !*** ./frontend/api_util.js ***!
  \******************************/
/***/ ((module) => {

const APIUtil = {
    followUser: id => {
        return $.ajax({
            url: `/users/${id}/follow`,
            type: "POST",
            dataType: 'json'
        })
    },
    unfollowUser: id => {
        return $.ajax({
            url: `/users/${id}/follow`,
            type: "DELETE",
            dataType: 'json'
        })
    },
    searchUsers: queryVal => {
        return $.ajax({
            url: "/users/search",
            dataType: 'json',
            data: {query: queryVal}
        })
    },
    createTweet: data => {
        return $.ajax({
            url: "/tweets",
            dataType: 'json',
            type: 'POST',
            data: {tweet: data}
        })
    }
};

module.exports = APIUtil;





/***/ }),

/***/ "./frontend/follow_toggle.js":
/*!***********************************!*\
  !*** ./frontend/follow_toggle.js ***!
  \***********************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

const APIUtil = __webpack_require__(/*! ./api_util.js */ "./frontend/api_util.js");

class FollowToggle{
    constructor(el, options){
        this.$el = $(el);
        this.userId = this.$el.data('user-id') || options.userId;
        this.followState = this.$el.data('initial-follow-state') || options.followState;
        this.render();
        this.$el.on("click", (e) => {
            this.handleClick(e);
        });
    }
    render(){
        if (this.followState === "following" || this.followState === "unfollowing"){
            this.$el.prop("disabled", true);
        } else {
            this.$el.prop("disabled", false);
            this.$el.text(this.followState === "unfollowed" ? "Follow!" : "Unfollow!");
        }
    }
    handleClick(e){
        e.preventDefault();
        if(this.followState === "followed"){
            this.followState = "unfollowing";
            this.render();
            APIUtil.unfollowUser(this.userId).then(()=>{
                this.followState = "unfollowed";
                this.render();
            });  
        }
        else{
            this.followState = "following";
            this.render();
            APIUtil.followUser(this.userId).then(() => {
                this.followState = "followed";
                this.render();
            });
            
        }
    }
}

module.exports = FollowToggle;

/***/ }),

/***/ "./frontend/users_search.js":
/*!**********************************!*\
  !*** ./frontend/users_search.js ***!
  \**********************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

const APIUtil = __webpack_require__(/*! ./api_util.js */ "./frontend/api_util.js");
const FollowToggle = __webpack_require__(/*! ./follow_toggle.js */ "./frontend/follow_toggle.js");

class UsersSearch{
  constructor(ele){
    this.$el = $(ele);
    this.$input = this.$el.find('input');
    this.$ul = this.$el.find('ul.users');
    this.$input.on("input", (e) => {this.handleInput(e)});
  }

  handleInput(e){
    APIUtil.searchUsers(this.$input.val()).then(users => this.renderResults(users))
  }

  renderResults(users){
    this.$ul.empty();
    users.forEach(user => {
      const $li = $(`<li><a href="/users/${user.id}">${user.username}</a></li>`);
      const $button = $(`<button class="follow-toggle"></button>`);
      const options = { userId: user.id, followState : user.followed ? "followed" : "unfollowed"} ;
      new FollowToggle($button,options);
      $li.append($button);
      this.$ul.append($li);
    })
  }
}

module.exports = UsersSearch;

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
(() => {
/*!*****************************!*\
  !*** ./frontend/twitter.js ***!
  \*****************************/
const FollowToggle = __webpack_require__(/*! ./follow_toggle.js */ "./frontend/follow_toggle.js");
const UsersSearch = __webpack_require__(/*! ./users_search.js */ "./frontend/users_search.js");


$(() => {
  $("button.follow-toggle").each((_, button)=>{
    new FollowToggle(button);
  });
  $("nav.users-search").each((_, ele)=>{
    new UsersSearch(ele);
  });
});


})();

/******/ })()
;
//# sourceMappingURL=bundle.js.map