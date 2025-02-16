const app = angular.module("app", []);
app.controller("baocao-ctrl", function($scope, $http) {
	$scope.form = {};
	$scope.dmucsp = [];
	$scope.cates = [];
	$scope.bras = [];
	$scope.items = [];
	$scope.nsp_saphet = [];

	$scope.reset = function() {
		$scope.form = {
			createDate: new Date(),
			moTa: ''
			// Các trường khác của form
		};
		$scope.imageURL = ''; // Đặt lại đường dẫn ảnh về trống để không hiển thị ảnh
	};

	$scope.initialize = function() {
		// Load sản phẩm
		$http.get("/rest/sanpham/tonKho").then(resp => {
			$scope.items = resp.data;
			$scope.items.forEach(item => {
				item.createDate = new Date(item.createDate);
			});
			console.log("Sản phẩm:", resp.data);
		}).catch(error => {
			console.error("Lỗi khi tải sản phẩm:", error);
		});
		
		// Load sản phẩm sắp hết hàng
		$http.get("/rest/sanpham/sapHetHang").then(resp => {
			$scope.nsp_saphet = resp.data;
			$scope.nsp_saphet.forEach(item => {
				item.createDate = new Date(item.createDate);
			});
			console.log("Sản phẩm sắp hết hàng:", resp.data);
		}).catch(error => {
			console.error("Lỗi khi tải sản phẩm:", error);
		});		

		// Load danh mục sản phẩm
		$http.get("/rest/danhmucsanpham").then(resp => {
			$scope.dmucsp = resp.data;
			console.log("Danh mục sản phẩm:", resp.data);
		}).catch(error => {
			console.error("Lỗi khi tải danh mục sản phẩm:", error);
		});

		// Load loại sản phẩm
		$http.get("/rest/loaisanpham").then(resp => {
			$scope.cates = resp.data;
			console.log("Loại sản phẩm:", resp.data);
		}).catch(error => {
			console.error("Lỗi khi tải loại sản phẩm:", error);
		});

		// Load thương hiệu
		$http.get("/rest/thuonghieu").then(resp => {
			$scope.bras = resp.data;
			console.log("Thương hiệu:", resp.data);
		}).catch(error => {
			console.error("Lỗi khi tải thương hiệu:", error);
		});
	};

	// Lấy 5 chữ đầu
	$scope.getFirstFiveWords = function(str) {
		if (!str) return '';
		var words = str.split(' ');
		if (words.length > 5) {
			return words.slice(0, 5).join(' ');
		}
		return str;
	};


	$scope.XuatDTTheoThang = function() {
	    // Gửi yêu cầu HTTP GET tới API để lấy dữ liệu doanh thu
	    $http.get("/rest/donhang/doanhthu").then(resp => {
	        const data = resp.data; // Lấy dữ liệu doanh thu từ phản hồi

	        const workbook = new ExcelJS.Workbook(); // Tạo một trang tính mới
	        const worksheet = workbook.addWorksheet('Doanh Thu Theo Tháng'); // Tạo một worksheet mới với tên "Doanh Thu Theo Tháng"

	        // Định nghĩa các cột cho worksheet
	        worksheet.columns = [
	            { header: 'Tháng', key: 'month', width: 15 }, // Cột tháng với độ rộng 15
	            { header: 'Doanh thu', key: 'revenue', width: 25, style: { numFmt: '#,##0 "VND"' } }, // Cột doanh thu với định dạng tiền tệ
	        ];

	        // Lặp qua từng mục dữ liệu và thêm vào worksheet
	        data.forEach(item => {
	            worksheet.addRow({ month: `Tháng ${item[0]}`, revenue: item[1] }); // Thêm một dòng với dữ liệu tháng và doanh thu
	        });

	        // Thiết lập bộ lọc tự động cho dữ liệu từ cột A1 đến B1
	        worksheet.autoFilter = {
	            from: 'A1',
	            to: 'B1',
	        };

	        // Ghi trang tính vào bộ đệm dưới dạng file Excel
	        workbook.xlsx.writeBuffer().then(buffer => {
	            var blob = new Blob([buffer], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' }); // Tạo một Blob từ buffer
	            var link = document.createElement('a'); // Tạo một thẻ <a> ảo để tải xuống file
	            link.href = window.URL.createObjectURL(blob); // Tạo URL cho Blob
	            link.download = 'Doanh_Thu_Theo_Thang.xlsx';
	            link.click();
	        });
	    }).catch(error => {
	        console.error('Error exporting revenue data:', error); 
	    });
	};

	
	
	$scope.XuatDTTheoQuy = function() {
	    // Gửi yêu cầu HTTP GET tới API để lấy dữ liệu doanh thu theo quý
	    $http.get("/rest/donhang/doanhthu/quy").then(resp => {
	        const data = resp.data; // Lấy dữ liệu doanh thu từ phản hồi

	        const workbook = new ExcelJS.Workbook(); // Tạo một trang tính mới
	        const worksheet = workbook.addWorksheet('Doanh Thu Theo Quý'); // Tạo một worksheet mới với tên "Doanh Thu Theo Quý"

	        // Định nghĩa các cột cho worksheet
	        worksheet.columns = [
	            { header: 'Quý', key: 'month', width: 15 }, // Cột quý với độ rộng 15
	            { header: 'Doanh thu', key: 'revenue', width: 25, style: { numFmt: '#,##0 "VND"' } }, // Cột doanh thu với định dạng tiền tệ
	        ];

	        // Lặp qua từng mục dữ liệu và thêm vào worksheet
	        data.forEach(item => {
	            worksheet.addRow({ month: `Quý ${item[0]}`, revenue: item[1] }); // Thêm một dòng với dữ liệu quý và doanh thu
	        });

	        // Thiết lập bộ lọc tự động cho dữ liệu từ cột A1 đến B1
	        worksheet.autoFilter = {
	            from: 'A1',
	            to: 'B1',
	        };

	        // Ghi trang tính vào bộ đệm dưới dạng file Excel
	        workbook.xlsx.writeBuffer().then(buffer => {
	            var blob = new Blob([buffer], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' }); // Tạo một Blob từ buffer
	            var link = document.createElement('a'); // Tạo một thẻ <a> ảo để tải xuống file
	            link.href = window.URL.createObjectURL(blob); // Tạo URL cho Blob
	            link.download = 'Doanh_Thu_Theo_Quy.xlsx';
	            link.click(); 
	        });
	    }).catch(error => {
	        console.error('Error exporting revenue data:', error);
	    });
	};



	
	$scope.initialize();
	$scope.reset();


});

// doanh thu theo quý
document.addEventListener('DOMContentLoaded', function() {
	fetch('/rest/donhang/doanhthu/quy')
		.then(response => response.json())
		.then(data => {
			const labels = data.map(item => `Qúy ${item[0]}`);
			const revenueData = data.map(item => item[1]);

			const ctx = document.getElementById('quarterlyRevenueChart').getContext('2d');
			new Chart(ctx, {
				type: 'bar',
				data: {
					labels: labels,
					datasets: [{
						label: '1 quý  = 3 tháng',
						data: revenueData,
						backgroundColor: [
							'rgba(255, 99, 132, 0.2)',
							'rgba(128, 0, 128, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)'
						],
						borderColor: [
							'rgba(255, 99, 132, 1)',
							'rgba(128, 0, 128, 1)',
							'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)'
						],
						borderWidth: 1
					}]
				},
				options: {
					// 	                	plugins: {
					//                             legend: {
					//                                 display: false
					//                             }
					//                         },
					scales: {
						y: {
							beginAtZero: true
						}
					}
				}
			});
		})
		.catch(error => console.error('Error fetching quarterly revenue data:', error));
});


// doanh thu theo tháng
document.addEventListener('DOMContentLoaded', function() {
	// Gửi yêu cầu HTTP GET để lấy dữ liệu doanh thu hàng tháng từ API
	fetch('/rest/donhang/doanhthu')
		.then(response => response.json())
		.then(data => {
			
			const labels = data.map(item => `Tháng ${item[0]}`); // Tạo mảng các nhãn cho biểu đồ từ dữ liệu phản hồi (danh sách các tháng)
			const revenues = data.map(item => item[1]); // Tạo mảng doanh thu cho biểu đồ từ dữ liệu phản hồi

			const ctx = document.getElementById('revenueChart').getContext('2d');
			// Tạo biểu đồ mới sử dụng thư viện Chart.js
			new Chart(ctx, {
				type: 'bar', // Loại biểu đồ là biểu đồ cột (bar chart)
				data: {
					labels: labels, // Đặt các nhãn là các tháng
					datasets: [{
						label: 'Doanh Thu Hàng Tháng',
						data: revenues, // Dữ liệu doanh thu hàng tháng
						backgroundColor: [
							'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)',
							'rgba(255, 159, 64, 0.2)',
							'rgba(255, 99, 71, 0.2)',
							'rgba(34, 139, 34, 0.2)',
							'rgba(255, 215, 0, 0.2)',
							'rgba(0, 191, 255, 0.2)',
							'rgba(238, 130, 238, 0.2)',
							'rgba(128, 0, 128, 0.2)'
						],
						borderColor: [
							'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)',
							'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)',
							'rgba(153, 102, 255, 1)',
							'rgba(255, 159, 64, 1)',
							'rgba(255, 99, 71, 1)',
							'rgba(34, 139, 34, 1)',
							'rgba(255, 215, 0, 1)',
							'rgba(0, 191, 255, 1)',
							'rgba(238, 130, 238, 1)',
							'rgba(128, 0, 128, 1)'
						],
						borderWidth: 1
					}]
				},
				options: {
					plugins: {
						legend: {
							display: false // Ẩn chú thích biểu đồ
						}
					},
					scales: {
						x: {
							beginAtZero: true  // Bắt đầu từ 0
						},
						y: {
							beginAtZero: true  // Bắt đầu trục từ 0
						}
					}
				}
			});
		})
		.catch(error => console.error('Error fetching monthly revenue data:', error));
});

//Thời Gian
function time() {
	var today = new Date();
	var weekday = new Array(7);
	weekday[0] = "Chủ Nhật";
	weekday[1] = "Thứ Hai";
	weekday[2] = "Thứ Ba";
	weekday[3] = "Thứ Tư";
	weekday[4] = "Thứ Năm";
	weekday[5] = "Thứ Sáu";
	weekday[6] = "Thứ Bảy";
	var day = weekday[today.getDay()];
	var dd = today.getDate();
	var mm = today.getMonth() + 1;
	var yyyy = today.getFullYear();
	var h = today.getHours();
	var m = today.getMinutes();
	var s = today.getSeconds();
	m = checkTime(m);
	s = checkTime(s);
	nowTime = h + " giờ " + m + " phút " + s + " giây";
	if (dd < 10) {
		dd = '0' + dd
	}
	if (mm < 10) {
		mm = '0' + mm
	}
	today = day + ', ' + dd + '/' + mm + '/' + yyyy;
	tmp = '<span class="date"> ' + today + ' - ' + nowTime + '</span>';
	document.getElementById("clock").innerHTML = tmp;
	clocktime = setTimeout("time()", "1000", "Javascript");

	function checkTime(i) {
		if (i < 10) {
			i = "0" + i;
		}
		return i;
	}
}

async function fetchData() {
	const response = await fetch('http://localhost:8080/rest/sanpham/totalProductsByDanhMuc');
	const data = await response.json();
	return data;
}

async function createChart() {
	const data = await fetchData();

	const labels = data.map(item => item[0]);
	const values = data.map(item => item[1]);

	const ctx = document.getElementById('myPieChart').getContext('2d');
	new Chart(ctx, {
		type: 'pie',
		data: {
			labels: labels,
			datasets: [{
				label: 'Sản phẩm',
				data: values,
				backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)'
				],
				borderColor: [
					'rgba(255, 99, 132, 1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)'
				],
				borderWidth: 1
			}]
		},
		options: {
			responsive: true,
			plugins: {
				legend: {
					position: 'top',
				},
				title: {
					display: true,
					text: 'Sản phẩm'
				}
			}
		},
	});
}

createChart();