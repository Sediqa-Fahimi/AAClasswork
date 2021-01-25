class DOMNodeCollection {

    constructor(array) {
        this.array = array;
    }

    html(str) {

        if (!str) {
            // getter
            return this.array[0].innerHTML;
        } else {
            // setter
            this.array.forEach(ele => {
                ele.innerHTML = str;
            })
        }
    }

    empty() {
        this.array.forEach(ele => {
            ele.innerHTML = "";
        })
    }

    append(arg) {
        this.array.forEach((ele, idx) => {
            ele.innerHTML += arg[idx].outerHTML;
        });
    };



}

module.exports = DOMNodeCollection;