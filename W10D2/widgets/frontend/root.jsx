import React from "react";
import Clock from "./clock";
import Tabs from "./tabs";
import Weather from './weather';
import Autocomplete from './autocomplete';
const list = ["Mary", "Josh", "Katie", "Sam","Mark"]
const Root = (props) => {
    return (<div>
                <Clock />
                <Tabs array={[{"title": 'one',"content": 'I am the first'},
                {"title": 'two',"content": 'I am the second'}, {"title": 'three',"content": 'I am the third'}]}/>
                {/* <Weather /> */}
                <Autocomplete titles={list}/>
            </div>);
}

export default Root;