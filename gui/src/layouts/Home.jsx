import React, { Component } from "react";
import { Route, Switch } from "react-router-dom";

import routes from "routes.js";

class Home extends Component {
  constructor(props) {
    super(props);
    this.state = {

    };
  }

  getRoutes = routes => {
    return routes.map((prop, key) => {
        return (
            <Route
                path={prop.path}
                component={prop.component}
                key={key}
            />
        );
    });
  };

  render() {

    return (
      
        <div className="wrapper">
            <Switch>{this.getRoutes(routes)}</Switch>
        </div>
      
    );
  }
}

export default Home;
