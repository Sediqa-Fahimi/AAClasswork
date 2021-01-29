import React from 'react';

class TodoForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      id: Math.floor(Math.random() * 1000),
      title: '',
      body: '',
      done: false
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateTitle = this.updateTitle.bind(this);
    this.updateBody = this.updateBody.bind(this);
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.receiveTodo(this.state);
    this.setState({
      id: Math.floor(Math.random() * 1000),
      title: '',
      body: '',
      done: false
    })
  }

  render(){
    return(
      <form onSubmit={this.handleSubmit}>
        <h1>Add your Todo</h1>
        <label>Title: 
          <input type="text" value={this.state.title} onChange={this.updateTitle}/>
        </label>
        <label>Body: 
          <input type="text" value={this.state.body} onChange={this.updateBody}/>
        </label>

      </form>
    )
  }
}