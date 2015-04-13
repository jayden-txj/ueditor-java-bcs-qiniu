# ueditor-java-bcs-qiniu

## 简介
1. 对ueditor.jar源码进行修改
2. 使其支持上传文件，图片等到服务器，bcs（百度云存储），qiniu（七牛云）

## 使用
1. 请下载本项目并导入eclipse在tomcat下运行
2. config.properties中的jfinal.ueditor.upload_to
	1. 值为local时上传到服务器
	2. 值为bcs时上传到bcs
	3. 值为qiniu时上传到qiniu
3. config.properties中的bcs和qiniu需要修改为自己的ak，sk，bucketname
4. WebRoot\WUI\ueditor-min-1.4.3\jsp\config.json中
	1. imageUrlPrefix，videoUrlPrefix，fileUrlPrefix，三个值需要修改
	2. 当上传到local时设置对应的local地址，例如：http://localhost/ue
	3. 当上传到bcs，qiniu时设置为对应的地址，例如：http://yourname.qiniudn.com/@

## 源码修改说明
1. 修改了com.baidu.ueditor.upload.StorageManager.java一个文件
2. 修改详情

	    private static State saveTmpFile(File tmpFile, String path) {
	        State state = null;
	         
	        File targetFile = new File(path);
	        if (targetFile.canWrite()) {
	            return new BaseState(false, AppInfo.PERMISSION_DENIED);
	        }
	         
	        Properties config = QPropertiesUtil.config;
	        if(QPropertiesUtil.getPropertyToBoolean(config, "bae.ueditor.upload_to_bcs")){
	            String bucket = config.getProperty("bae.bcs.bucket");
	            String object = "/" + path.split("//")[1];
	            QBCSUtil.putObjectByFilePublic(bucket, object, tmpFile);
	        }else{
	            try {
	                FileUtils.moveFile(tmpFile, targetFile);
	            } catch (IOException e) {
	                return new BaseState(false, AppInfo.IO_ERROR);
	            }
	             
	        }
	         
	        state = new BaseState(true);
	        state.putInfo( "size", targetFile.length() );
	        state.putInfo( "title", targetFile.getName() );
	         
	        return state;
	    }

## 作者
1. uikoo9
2. 欢迎访问[uikoo9.com](http://uikoo9.com)