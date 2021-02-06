import { connect } from "react-redux";
import SessionForm from './sessionForm';
import { signup } from '../actions/session_actions';

const mSTP = (state, ownProps) => {
    return {
        errors: state.errors.session,
        formType: 'signup',
        link: '/login'
    }
}
const mDTP = (dispatch, ownProps) => {
    return {
        processForm: (user) => dispatch(signup(user))
    }
}

export default connect(mSTP, mDTP)(SessionForm);