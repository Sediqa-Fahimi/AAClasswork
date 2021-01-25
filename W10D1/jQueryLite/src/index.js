window.$l= function(arg){
    if(typeof arg === "string"){
        let nodeList = document.querySelectorAll(arg);
        let array = Array.from(nodeList);
        return array;
    }
};