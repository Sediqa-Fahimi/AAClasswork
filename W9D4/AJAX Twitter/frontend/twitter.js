const FollowToggle = require("./follow_toggle.js");


$(() => {
  $("button.follow-toggle").each((_, button)=>{
    new FollowToggle(button);
  })
});

