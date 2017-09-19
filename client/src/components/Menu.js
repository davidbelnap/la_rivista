import React from 'react';
import { Redirect } from 'react-router-dom';
import { isAuthenticated } from '../fakeAuth';

const Menu = () => {
	if (isAuthenticated()) {
		return (
			<div>
				<h1>MENU</h1>
			</div>
		)
	} else {
		return <Redirect to="/login" />
	}
}

export default Menu