import React, { Component } from 'react';
import { Route, Switch } from 'react-router-dom';
import Home from './components/Home';
import About from './components/About';
import Login from './components/Login';
import Menu from './components/Menu';
import NoMatch from './components/NoMatch';
import NavBar from './components/NavBar';
import './App.css';

const App = () => (
  <div>
    <NavBar />
    <Switch>
      <Route exact path="/" component={Home} />
      <Route path="/about" component={About} />
      <Route path="/login" component={Login} />
      <Route path="/menu" component={Menu} />

      // nothing goes below this.
      <Route component={NoMatch} />
    </Switch>
  </div>
);

export default App;