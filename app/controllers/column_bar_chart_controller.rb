class ColumnBarChartController < ApplicationController
  def basic_bar
     @chart = Highchart.bar({
      :chart => {
  			:renderTo => 'container',
  		},
  		:title => {
				:text => 'Historic World Population by Region'
			},
			:subtitle => {
				:text => 'Source: Wikipedia.org'
			},
			:x_axis => {
				:categories => ['Africa', 'America', 'Asia', 'Europe', 'Oceania'],
				:title => {
					:text => ''
				}
			},
			:y_axis => {
				:min => 0,
				:title => {
					:text => 'Population (millions)',
					:align => 'high'
				}
			},
			:tooltip => {
				:formatter => "function() {
					return ''+
						 this.series.name +': '+ this.y +' millions';
				}"
			},
			:plotOptions => {
				:bar => {
					:dataLabels => {
						:enabled => true
					}
				}
			},
			:legend => {
				:layout => 'vertical',
				:align => 'right',
				:verticalAlign => 'top',
				:x => -100,
				:y => 100,
				:borderWidth => 1,
				:backgroundColor => '#FFFFFF'
			},
		  :series => [{
				:name  => 'Year 1800',
				:data  => [107, 31, 635, 203, 2]
			}, {
				:name  => 'Year 1900',
				:data  => [133, 156, 947, 408, 6]
			}, {
				:name  => 'Year 2008',
				:data  => [973, 914, 4054, 732, 34]
			}]
  		})
  end

  def stacked_bar
     @chart = Highchart.bar({
      :chart => {
  			:renderTo => 'container',
  		},
  		:title => {
				:text => 'Stacked bar chart'
			},
			:x_axis => {
				:categories => ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
			},
			:y_axis => {
				:min => 0,
				:title => {
					:text => 'Total fruit consumption'
				}
			},
			:legend => {
				:backgroundColor => '#FFFFFF',
				:reversed => true
			},
			:tooltip => {
				:formatter => "function() {
					return ''+
						 this.series.name +': '+ this.y +'';
				}"
			},
			:plotOptions => {
				:series => {
					:stacking => 'normal'
				}
			},
		  :series => [{
				:name  => 'John',
				:data  => [5, 3, 4, 7, 2]
			}, {
				:name  => 'Jane',
				:data  => [2, 2, 3, 2, 1]
			}, {
				:name  => 'Joe',
				:data  => [3, 4, 4, 2, 5]
			}]
  		})
  end

  def basic_column
    @chart = Highchart.column({
      :chart => {
  			:renderTo => 'container',
  		},
  		:title => {
				:text => 'Monthly Average Rainfall'
			},
			:subtitle => {
				:text => 'Source: WorldClimate.com'
			},
			:x_axis => {
				:categories => [
					'Jan', 
					'Feb', 
					'Mar', 
					'Apr', 
					'May', 
					'Jun', 
					'Jul', 
					'Aug', 
					'Sep', 
					'Oct', 
					'Nov', 
					'Dec'
				]
			},
			:y_axis => {
				:min => 0,
				:title => {
					:text => 'Rainfall (mm)'
				}
			},
			:legend => {
				:layout => 'vertical',
				:backgroundColor => '#FFFFFF',
				:align => 'left',
				:verticalAlign => 'top',
				:x => 100,
				:y => 70
			},
			:tooltip => {
				:formatter => "function() {
					return ''+
						this.x +': '+ this.y +' mm';
				}"
			},
			:plotOptions => {
				:column => {
					:pointPadding => 0.2,
					:borderWidth => 0
				}
			},
		  :series => [{
				:name  => 'Tokyo',
				:data  => [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
		
			}, {
				:name  => 'New York',
				:data  => [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]
		
			}, {
				:name  => 'London',
				:data  => [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]
		
			}, {
				:name  => 'Berlin',
				:data  => [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]
		
			}]
  		})
  end

  def column_negative
     @chart = Highchart.column({
        :chart => {
    			:renderTo => 'container'
    		},
    		:title => {
					:text => 'Column chart with negative values'
				},
				:x_axis => {
					:categories => ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
				},
				:y_axis => {
    			:title => {
    				:text => 'Y-values'
    			}
  			},
				:tooltip => {
					:formatter => "function() {
						return ''+
							 this.series.name +': '+ this.y +'';
					}"
				},
				:series => [{
					:name  => 'John',
					:data  => [5, 3, 4, 7, 2]
				}, {
					:name  => 'Jane',
					:data  => [2, -2, -3, 2, 1]
				}, {
					:name  => 'Joe',
					:data  => [3, 4, 4, -2, 5]
				}]
    		})
  end

  def stack_column
    @chart = Highchart.column({
        :chart => {
    			:renderTo => 'container',
    		},
    		:title => {
					:text => 'Stacked column chart'
				},
				:x_axis => {
					:categories => ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
				},
				:y_axis => {
					:min => 0,
					:title => {
						:text => 'Total fruit consumption'
					}
				},
				:legend => {
					:style => {
						:left => 'auto',
						:bottom => 'auto',
						:right => '70px',
						:top => '35px'
					},
					:backgroundColor => '#FFFFFF',
					:borderColor => '#CCC',
					:borderWidth => 1,
					:shadow => false
				},
				:tooltip => {
					:formatter => "function() {
						return '<b>'+ this.x +'</b><br/>'+
							 this.series.name +': '+ this.y +'<br/>'+
							 'Total: '+ this.point.stackTotal;
					}"
				},
				:plotOptions => {
					:column => {
						:stacking => 'normal'
					}
				},
			  :series => [{
					:name  => 'John',
					:data  => [5, 3, 4, 7, 2]
				}, {
					:name  => 'Jane',
					:data  => [2, 2, 3, 2, 1]
				}, {
					:name  => 'Joe',
					:data  => [3, 4, 4, 2, 5]
				}]
    		})
  end

  def stack_perc_column
    @chart = Highchart.column({
        :chart => {
    			:renderTo => 'container',
    		},
    		:title => {
					:text => 'Stacked column chart'
				},
				:x_axis => {
					:categories => ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
				},
				:y_axis => {
					:min => 0,
					:title => {
						:text => 'Total fruit consumption'
					}
				},
				:tooltip => {
					:formatter => "function() {
						return ''+
							 this.series.name +': '+ this.y +' ('+ Math.round(this.percentage) +'%)';
					}"
				},
				:plotOptions => {
					:column => {
						:stacking => 'percent'
					}
				},
			  :series => [{
					:name  => 'John',
					:data  => [5, 3, 4, 7, 2]
				}, {
					:name  => 'Jane',
					:data  => [2, 2, 3, 2, 1]
				}, {
					:name  => 'Joe',
					:data  => [3, 4, 4, 2, 5]
				}]
    		})
  end

  def column_rotated_labels
    @chart = Highchart.column({
        :chart => {
    			:renderTo => 'container',
    		  :margin => [ 50, 50, 100, 80]
				},
				:title => {
					:text => 'World\'s largest cities per 2008'
				},
				:x_axis => {
					:categories => [
						'Tokyo', 
						'Jakarta', 
						'New York', 
						'Seoul', 
						'Manila',
						'Mumbai',
						'Sao Paulo',
						'Mexico City',
						'Dehli',
						'Osaka',
						'Cairo',
						'Kolkata',
						'Los Angeles',
						'Shanghai',
						'Moscow',
						'Beijing',
						'Buenos Aires',
						'Guangzhou',
						'Shenzhen',
						'Istanbul'
					],
					:labels => {
						:rotation => -45,
						:align => 'right',
						:style => {
							 :font => 'normal 13px Verdana, sans-serif'
						}
					}
				},
				:y_axis => {
					:min => 0,
					:title => {
						:text => 'Population (millions)'
					}
				},
				:legend => {
					:enabled => false
				},
				:tooltip => {
					:formatter => "function() {
						return '<b>'+ this.x +'</b><br/>'+
							 'Population in 2008: '+ Highcharts.numberFormat(this.y, 1) +
							 ' millions';
					}"
				},
			  :series => [{
					:name  => 'Population',
					:data  => [34.4, 21.8, 20.1, 20, 19.6, 19.5, 19.1, 18.4, 18, 
						17.3, 16.8, 15, 14.7, 14.5, 13.3, 12.8, 12.4, 11.8, 
						11.7, 11.2],
					:dataLabels => {
						:enabled => true,
						:rotation => -90,
						:color => '#FFFFFF',
						:align => 'right',
						:x => -3,
						:y => 10,
						:formatter => "function() {
							return this.y;
						}",
						:style => {
							:font => 'normal 13px Verdana, sans-serif'
						}
					}			
				}]
    		})
  end

  def column_data_html
     @chart = Highchart.column({
          :chart => {
      			:renderTo => 'container',
      		},
      		:title => {
					      :text => 'Data extracted from a HTML table in the page'
					},
					:x_axis => {
					},
					:y_axis => {
					    :title => {
					       :text => 'Units'
					     }
					},
					:tooltip => {
					  :formatter => "function() {
					         return '<b>'+ this.series.name +'</b><br/>'+
					            this.y +' '+ this.x.toLowerCase();
					      }"
					},
      		:format =>'options'
      		})
  end

end
