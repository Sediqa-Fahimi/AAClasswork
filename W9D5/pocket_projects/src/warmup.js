
const partyHeader = document.getElementById('party');

export const htmlGenerator = (string, htmlElement) => {

    if (htmlElement.children) {
        Array.from(htmlElement.children).forEach((child) => htmlElement.removeChild(child));
    }


    var p = document.createElement("p");
    var text = document.createTextNode(string)
    p.appendChild(text);
    htmlElement.appendChild(p);
};

htmlGenerator('Party Time.', partyHeader);