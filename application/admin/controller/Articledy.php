<?php
namespace app\admin\controller;

use app\admin\model\Settings_module;
use think\Request;
use think\Db;



class Articledy extends Base
{
	public function _initialize()
	{
		parent::_initialize();
	}
	public function index()
	{
		$where = array();
		$pagesize = 20;
		$request = Request::instance();
		$data = $request->param();
		$search = $data['keyword'];
		if($search){
			$where['name'] = ['like','%'.$search.'%'];
		}
		//$where['online'] = 1;
		$orderby = 'id desc';
		$list = Db::name('article_dy')->where($where)->order($orderby)->paginate($pagesize);;
		$data['list'] = $list;
		$page = $list->render();
		$this->assign('page', $page);
		
		return $this->fetch('/base',['_view'=>'article_dy/list','data'=>$data]);
	}

	public function edit()
	{
		$data = array();
		$module = array();
		$request = Request::instance();
		$data = $request->param();
		$opt = isset($data['opt'])?$data['opt']:0;
		$id = isset($data['id'])?$data['id']:0;
		$Settings_module= new Settings_module;
		if(!empty($opt) && $opt=='save'){
			//保存
			$datas = array();
			$datas = $data['data'];
			if($id>0){
				//update
				Db::name('article_dy')->where(array('id'=>$id))->update($datas);
            	$this->success('修改成功', 'admin/articledy/index');
			}else{
				//insert
				Db::name('article_dy')->insert($datas);
            	$this->success('新增成功', 'admin/articledy/index');
			}
			exit;
		}
	
		if($id>0){
			$module = Db::name('article_dy')->where(array('id'=>$id))->find();
			//$module = Settings_module::get(array('id'=>$id));
		}
		$data['module'] = $module;
		return $this->fetch('/base',['_view'=>'article_dy/edit','data'=>$data]);
	}
	
}
