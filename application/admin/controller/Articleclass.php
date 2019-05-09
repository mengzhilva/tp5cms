<?php
namespace app\admin\controller;

use app\admin\model\Settings_module;
use think\Request;
use think\Db;



class Articleclass extends Base
{
	private $table = 'article_class';
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
		$orderby = 'id desc';
		$list = Db::name($this->table)->where($where)->order($orderby)->paginate($pagesize);;
		$data['list'] = $list;
		$page = $list->render();
		$this->assign('page', $page);
		
		return $this->fetch('/base',['_view'=>'articleclass/list','data'=>$data]);
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
				Db::name($this->table)->where(array('id'=>$id))->update($datas);
            	$this->success('修改成功', 'admin/articleclass/index');
			}else{
				//insert
				Db::name($this->table)->insert($datas);
            	$this->success('新增成功', 'admin/articleclass/index');
			}
			exit;
		}
	
		if($id>0){
			$module = Db::name($this->table)->where(array('id'=>$id))->find();
			//$module = Settings_module::get(array('id'=>$id));
		}
		$data['module'] = $module;
		return $this->fetch('/base',['_view'=>'articleclass/edit','data'=>$data]);
	}
	
}
