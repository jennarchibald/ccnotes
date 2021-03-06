  import React, { Component, Fragment } from 'react';

  class PiggyBank extends Component {

    constructor(props) {
      super(props);

      this.state = {
        total: 0
      };

      this.deposit = this.deposit.bind(this);
      this.withdraw = this.withdraw.bind(this);
    }

    componentWillMount() {
      console.log('Component WILL MOUNT!');
      var button = document.querySelector('button');
      console.log("Button:", button);
    }

    componentDidMount() {
      console.log('Component DID MOUNT!');
      var button = document.querySelector('button');
      console.log("Button:", button);
    }


    componentWillUpdate(nextProps, nextState) {
      console.log('Component WILL UPDATE!');
      console.log("Next State:", nextState);
      console.log("Next Props:", nextProps);
    }

    componentDidUpdate(prevProps, prevState) {
      console.log('Component DID UPDATE!')
      console.log("Previous State:", prevState)
      console.log("Previous Props:", prevProps)
    }


    deposit() {
      this.setState(prevState => {
        return {total: prevState.total + this.props.depositAmount};
      });
    }

    withdraw() {
      this.setState(prevState => {
        let newAmount = prevState.total - this.props.depositAmount;
        if(newAmount < 0){
          newAmount = 0;
        }
        return {total: newAmount};
      });
    }

    render() {
      return (
        <Fragment>
        <h1>{this.props.title}</h1>
        <p>Total: £{this.state.total}</p>
        <button onClick={ this.deposit }>Deposit</button>
        <button onClick={ this.withdraw }>Withdraw</button>
        </Fragment>
      );
    }
  }

  export default PiggyBank;
