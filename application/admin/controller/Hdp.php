<?php
namespace app\admin\controller;

use app\admin\model\Settings_module;
use think\Request;
use think\Db;



class Hdp extends Base
{
	private $table = 'hdp';
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
		$list = Db::name($this->table)->where($where)->order($orderby)->paginate($pagesize);;
		$data['list'] = $list;
		$page = $list->render();
		$this->assign('page', $page);
		
		return $this->fetch('/base',['_view'=>'hdp/list','data'=>$data]);
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
		$class = Db::name('article_class')->select();
		$this->assign('class',$class);
		if(!empty($opt) && $opt=='save'){
			//保存
			$datas = array();
			$datas = $data['data'];
			$datas['add_time'] = date('Y-m-d H:i:s');
			if($id>0){
				//update
				Db::name($this->table)->where(array('id'=>$id))->update($datas);
            	$this->success('修改成功', 'admin/hdp/index');
			}else{
				//insert
				Db::name($this->table)->insert($datas);
            	$this->success('新增成功', 'admin/hdp/index');
			}
			exit;
		}
	
		if($id>0){
			$module = Db::name($this->table)->where(array('id'=>$id))->find();
			//$module = Settings_module::get(array('id'=>$id));
		}
		$data['module'] = $module;
		return $this->fetch('/base',['_view'=>'hdp/edit','data'=>$data]);
	}
	
}
