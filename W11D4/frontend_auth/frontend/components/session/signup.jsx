import React from 'react';

class Signup extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            username: '',
            email: '',
            password: ''
        }
        this.handleSubmit = this.handleSubmit.bind(this);
    }
    handleInput(type){
        return (e)=>{
            this.setState({ [type]: e.target.value})
        }
    }
    handleSubmit(e){
        e.preventDefault();
        this.props.createNewUser(this.state)
            .then(()=> this.props.history.push('/chirps'));
    }
    render(){
        return (
            <div className="session-form">
                <h2>Sign Up!</h2>
                <form>
                    <label>Username:
                        <input type="text" value={this.state.username} onchange={this.handleInput('username')}/>
                    </label>
                    <label>email:
                        <input type="text" value={this.state.email} onchange={this.handleInput('email')}/>
                    </label>
                    <label>Password:
                        <input type="password" value={this.state.password} onchange={this.handleInput('password')}/>
                    </label>
                    <button onClick={this.handleSubmit}>Sign Up</button>
                </form>
            </div>
        );
    }
};
export default Signup;