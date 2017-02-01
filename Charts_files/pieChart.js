var PieChart = function () {
  var container = document.getElementById('pie-chart');
  var charts = new Highcharts.Chart({

    chart: {
      type: 'pie',
      renderTo: container
    },

    title: {
      text: "Pokemon Types I've Caught"
    },

    series: [{
      name: "Pokemon Type",
      data: [
         {
          name: "Fire",
          y: 74,
          color: "DodgerBlue",
          sliced: true
         },
         {
          name: "Water",
          y: 25,
          color: "#ffac33"
         },
         {
          name: "Grass",
          y: 1,
          color: "tomato"
         }]
    }]



  });
}