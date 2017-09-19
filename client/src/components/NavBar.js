import React from 'react';
import { NavLink, withRouter } from 'react-router-dom';
import { isAuthenticated, logout } from '../fakeAuth';

const styles = {
	active: {
		fontWeight: 'bold',
		fontSize: '20px',
		color: 'green'
	}
}

const additionalLinks = (history) => {
	if (isAuthenticated()) {
		return (
			<span>
				<a href="#" onClick={() => {
					logout()
					history.push("/login")
				}}>
					Logout
				</a>
			</span>
		)
	} else {
		return (
			<NavLink activeStyle={styles.active} to="/login">Login</NavLink>
		)
	}
}

const NavBar = ({ history }) => (
	<nav>
		<NavLink exact activeStyle={styles.active} to="/">Home</NavLink>
		{' '}
		<NavLink activeStyle={styles.active} to="/about">About</NavLink>
		{' '}
		<NavLink activeStyle={styles.active} to="/menu">Menu</NavLink>
		{' '}
		{additionalLinks(history)}
	</nav>
)

export default withRouter(NavBar);