project.config = (function() {
	var settings = {
			/*用户相关服务*/
		roleservice: "/js/modules/roleservice.js",
		userservice: "/js/modules/userservice.js",
		resourceservice: "/js/modules/resourceservice.js",
		visitingRecordservice:"/js/modules/visitingRecordservice.js",
		passservice:"/js/modules/passservice.js",
	};
	return {
		getConfig : function(x) {
			var uri = settings[x] ;
			//如果为产品模式，则js由云存储下载
			if(project.profile && project.profile == 'product'){
				//uri = project.cdn + '/'+uri ;
			}
			return uri ;
		}
	}
})()
