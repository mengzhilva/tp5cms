<?php
namespace app\admin\controller;

use app\admin\model\Settings_module;
use think\Request;
use think\Db;



class Ajax extends \think\Controller
{
	function uploadimg(){

		$arr['uploaded'] = 1;
		$file = request()->file('upload');
		$path = '/public/uploads/article/';
		$pathr = '/uploads/article/';
		if(!is_dir(BASEPATH.'/public/uploads/article/')){
			//				mkdir(BASEPATH.'/uploads/'.$dir.'/',true);
			mkdir(BASEPATH.'/public/uploads/article/');
		}
		// 移动到框架应用根目录/public/uploads/ 目录下
		if($file){
			$info = $file->move(ROOT_PATH .$path);
			if($info){
				// 成功上传后 获取上传信息
				// 输出 jpg
				$uploadFilename = $pathr.$info->getSaveName();;
				$arr['url'] = $uploadFilename;
				$arr['fileName'] = $uploadFilename;
				echo json_encode($arr);;
				// 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
				//echo $info->getSaveName();
				// 输出 42a79759f284b767dfcb2a0197904287.jpg
				//echo $info->getFilename();
			}else{
				// 上传失败获取错误信息
				echo $file->getError();
			}
		}
		
		
	
	}
	function upload(){

		$arr['uploaded'] = 1;
		$file = request()->file('file');
		$path = '/public/uploads/file/';
		$pathr = '/uploads/file/';
		if(!is_dir(BASEPATH.'/public/uploads/file/')){
			//				mkdir(BASEPATH.'/uploads/'.$dir.'/',true);
			mkdir(BASEPATH.'/public/uploads/file/');
		}
		// 移动到框架应用根目录/public/uploads/ 目录下
		if($file){
			$info = $file->move(ROOT_PATH .$path);
			if($info){
				// 成功上传后 获取上传信息
				// 输出 jpg
				$uploadFilename = $pathr.$info->getSaveName();;
				$arr['url'] = $uploadFilename;
				$arr['src'] = $uploadFilename;
				$arr['fileName'] = $uploadFilename;
				$arr['success'] = 1;
				
				echo json_encode($arr);;
				// 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
				//echo $info->getSaveName();
				// 输出 42a79759f284b767dfcb2a0197904287.jpg
				//echo $info->getFilename();
			}else{
				// 上传失败获取错误信息
				echo $file->getError();
			}
		}
		
		
	
	}
}