class FollowToggle{
    constructor(el){
        this.$el = $(el);
        this.userId = this.$el.data('user-id');
        this.followState = this.$el.data('initial-follow-state');
        this.render();
        this.$el.on("click", (e) => {
            this.handleClick(e);
        });
    }
    render(){
        this.$el.text(this.followState === "unfollowed" ? "Follow!" : "Unfollow!");
    }
    handleClick(e){
        e.preventDefault();
        if(this.followState === "followed"){
            $.ajax({
                url: `/users/${this.userId}/follow`,
                type: "DELETE",
                dataType: 'json'
            }).then(()=>{
                this.followState = "unfollowed";
                this.render();
            });  
        }
        else{
            $.ajax({
                url: `/users/${this.userId}/follow`,
                type: "POST",
                dataType: 'json'
            }).then(()=>{
                this.followState = "followed";
                this.render();
            }); 
        }
    }
}

module.exports = FollowToggle;