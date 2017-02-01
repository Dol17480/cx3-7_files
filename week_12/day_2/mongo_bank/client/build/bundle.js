/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;
/******/
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports, __webpack_require__) {

	var Bank = __webpack_require__(1);
	var Account = __webpack_require__(2);
	var BankView = __webpack_require__(3);
	
	window.onload = function() {
	  var bank = new Bank();
	
	  var url = 'http://localhost:3000/accounts';
	  var request = new XMLHttpRequest();
	  request.open("GET", url);
	  request.onload = function(){
	    if(request.status == 200){
	      var sampleAccounts = JSON.parse(request.responseText);
	
	      for(account of sampleAccounts) {
	        bank.addAccount(new Account(account));
	      }
	      var bankView = new BankView(bank);
	      bankView.bindEvents();
	      bankView.render();
	    }
	  }
	  request.send();
	};


/***/ },
/* 1 */
/***/ function(module, exports) {

	var Bank = function() {
	  this.accounts = [];
	};
	
	Bank.prototype = {
	  addAccount: function(account) {
	    this.accounts.push(account);
	  },
	  findAccountByOwnerName:function(ownerName) {
	    var foundAccount = null;
	    for (account of this.accounts) {
	      if(account.owner === ownerName) {
	        foundAccount = account;
	      }
	    }
	    return foundAccount;
	  },
	  filteredAccounts: function(type) {
	    if(!type) return this.accounts;
	    var filteredAccounts = [];
	    for (account of this.accounts) {
	      if(type === account.type)
	        filteredAccounts.push(account);
	    }
	    return filteredAccounts;
	  },
	  totalCash:function(type) {
	    var total = 0;
	    for (account of this.filteredAccounts(type)) {
	      total += account.amount;
	    }
	    return total;
	  },
	  accountAverage:function() {
	    return this.totalCash()/this.accounts.length;
	  },
	  payInterest(percentage){
	    var multiplier = 1 + (percentage/100)
	    for(account of this.accounts){
	      account.amount = account.amount * multiplier;
	    }
	  }
	};
	
	
	module.exports = Bank;


/***/ },
/* 2 */
/***/ function(module, exports) {

	var Account = function(params) {
	  this.owner = params.owner;
	  this.amount = params.amount;
	  this.type = params.type;
	};
	
	module.exports = Account;


/***/ },
/* 3 */
/***/ function(module, exports, __webpack_require__) {

	var Account = __webpack_require__(2)
	
	var BankView = function(bank) {
	  this.bank = bank;
	};
	
	BankView.prototype = {
	
	  bindEvents: function(){
	    var form = document.getElementById('add-account');
	    form.onsubmit = function(e){
	      e.preventDefault();
	
	      var account = {
	        owner: e.target.owner.value,
	        amount: parseFloat(e.target.amount.value),
	        type: e.target.type.value
	      }
	
	      this.bank.addAccount(new Account(account));
	      this.render();
	      this.saveAccount(account);
	    }.bind(this);
	
	    var interestButton = document.getElementById('interest-button');
	    interestButton.onclick = function() {
	      this.bank.payInterest(10);
	      this.render();
	    }.bind(this);
	  },
	
	  saveAccount: function(account) {
	    var url = 'http://localhost:3000/accounts';
	    var request = new XMLHttpRequest();
	    request.open("POST", url);
	    request.setRequestHeader("Content-Type", "application/json");
	
	    request.onload = function(){
	      if(request.status == 200){
	        console.log("Account added");
	      }
	    }
	    request.send(JSON.stringify(account));
	  },
	
	  render: function() {
	    var totalDisplay = document.getElementById('total');
	    var businessTotalDisplay = document.getElementById('business-total');
	    var personalTotalDisplay = document.getElementById('personal-total');
	
	    totalDisplay.innerText = "Total: £" + this.bank.totalCash().toFixed(2);
	    businessTotalDisplay.innerText = "Total Business: £" + this.bank.totalCash('business').toFixed(2);
	    personalTotalDisplay.innerText = "Total Personal: £" + this.bank.totalCash('personal').toFixed(2);
	
	    var businessAccountList = document.getElementById('business-accounts');
	    var personalAccountList = document.getElementById('personal-accounts');
	
	    businessAccountList.innerHTML = "";
	    personalAccountList.innerHTML = "";
	
	    this.populateAccountList(businessAccountList, this.bank.filteredAccounts('business'));
	    this.populateAccountList(personalAccountList, this.bank.filteredAccounts('personal'));
	  },
	
	  createItemForAccount:function(account) {
	    var accountListItem = document.createElement('li');
	    accountListItem.innerText = account.owner + ": £" + account.amount.toFixed(2);
	    return accountListItem;
	  },
	
	  populateAccountList:function(listElement, accounts) {
	    for(account of accounts) {
	      listElement.appendChild(this.createItemForAccount(account));
	    }
	  }
	};
	
	module.exports = BankView;


/***/ }
/******/ ]);
//# sourceMappingURL=bundle.js.map