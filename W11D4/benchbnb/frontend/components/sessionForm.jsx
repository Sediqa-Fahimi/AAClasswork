

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: "",
            password: ""
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
    }

    render(){
        const title = this.props.formType === "login" ? "Log in" : "Sign up";
        const goto = this.props.link
        return(
            <>
                <header>{title}</header>
                <form onSubmit={this.handleSubmit}>
                    

                </form>
            </>
        )
    }
}