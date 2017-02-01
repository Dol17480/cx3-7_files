var React = require('react');

var CommentForm = React.createClass({
  getInitialState: function () {
    return {author: '', text: ''};
  },
handleAuthorChange: function (event){
this.setState({author: event.target.value});
},
handleTextChange: function (event){
  this.setState({text: event.target.value});
},
handleSubmit: function (event){
  event.preventDefault();
  var author = this.state.author.trim();
  var text = this.state.text.trim();
  if (!text || !author) {
    return;
  }
  // TODO: Update comments list
  this.props.onCommentSubmit({author: author, text: text});
  this.setState({author: '', text: ''});
},
  render: function () {
    return (
      <form 
      className='comment-form'
      onSubmit={this.handleSubmit}
      >
         <input 
         type='text' 
         placeholder='Enter name.' 
         value={this.state.author}
         onChange={this.handleAuthorChange}
         />
         <input 
         type='text' 
         placeholder='Add comment.' 
         value={this.state.text}
         onChange={this.handleTextChange}
         />
         <input type='submit' value='Post Comment' />
      </form>
      )
  }
});

module.exports = CommentForm;