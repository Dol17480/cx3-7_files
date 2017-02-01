var React = require('react');
var CommentForm = require('./CommentForm.jsx')
var CommentList = require('./CommentList.jsx')

var sampleData = [
  {id:1, author: 'Craig', text: 'Bears should know how to BEAR!'},
  {id:2, author: 'Cohort 7', text: 'Same as everyone else'}
  ];

var CommentBox = React.createClass({
  getInitialState: function () {
    return {data: sampleData}
  },

  render: function () {
    return (
      <div className='comment-box'>
        <h2> Add a comment</h2>
        <CommentForm onCommentSubmit={this.handleCommentSubmit}/>
        <CommentList comments={this.state.data}/>
      </div>
      )
  },
  handleCommentSubmit: function (comment) {
    comment.id = Date.now();
    var updatedComments = this.state.data.concat([comment]);
    this.setState({data: updatedComments});
  }
});

module.exports = CommentBox;