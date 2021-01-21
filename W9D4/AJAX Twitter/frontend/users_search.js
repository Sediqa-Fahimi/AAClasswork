const APIUtil = require("./api_util.js");

class UsersSearch{
  constructor(ele){
    this.$el = $(ele);
    this.$input = this.$el.find('input');
    this.$ul = this.$el.find('ul.users');
    this.$input.on("input", (e) => {this.handleInput(e)});
    // console.log("user search constructor");
  }

  handleInput(e){
    // console.log("handling");
    APIUtil.searchUsers(this.$input.val()).then(users => this.renderResults(users))
  }

  renderResults(users){
    this.$ul.empty();
    users.forEach(user => {
      this.$ul.append($(`<li><a href="/users/${user.id}">${user.username}</a></li>`))
    })
  }
}

module.exports = UsersSearch;