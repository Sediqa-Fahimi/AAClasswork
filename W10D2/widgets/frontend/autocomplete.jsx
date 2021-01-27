import React from 'react';

class Autocomplete extends React.Component{
   constructor(props){
       super(props);
       this.state = {inputVal: ""};
       this.handleChange = this.handleChange.bind(this);
   } 
    handleChange(event) {
        this.setState({ inputVal: event.target.value });
    }

   render(){
    //    debugger
       const results = this.props.titles.filter(title => title.startsWith(this.state.inputVal));
       const outputs = results.map((el,idx)=>{
           return(
               <li key={idx} onClick={()=> this.setState({inputVal: el})} >{el}</li>
           );
        });
       return (
        <>
            <br />
            <h2>Autocomplete</h2>
               <input type="text" value={this.state.inputVal} onChange={this.handleChange} />
            <ul>
                {outputs}
            </ul>
        </>
       );
   }
}
export default Autocomplete;