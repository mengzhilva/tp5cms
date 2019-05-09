<?php
namespace app\admin\controller;

use app\admin\model\Settings_module;
use think\Request;
use think\Db;


class Menu extends Base
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
		$orderby = 'id desc';
		$list = Db::name('menu')->where($where)->order($orderby)->paginate($pagesize);;
		$data['list'] = $list;
		$page = $list->render();
		$this->assign('page', $page);
		
		return $this->fetch('/base',['_view'=>'menu/list','data'=>$data]);
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
		$class = Db::name('article_dy')->select();
		$this->assign('dy',$class);
		$class = Db::name('menu')->where('parent_id=0')->select();
		$this->assign('cd',$class);
		$this->assign('ym',$_SERVER['HTTP_HOST']);
		if(!empty($opt) && $opt=='save'){
			//保存
			$datas = array();
			$datas = $data['data'];
			if($datas['type']==1){
				$datas['class_id'] = $data['class_id'];
			}
			if($datas['type']==2){
				$datas['class_id'] = $data['dy_id'];
			}
			if($id>0){
				//update
				Db::name('menu')->where(array('id'=>$id))->update($datas);
            	$this->success('修改成功', 'admin/menu/index');
			}else{
				//insert
				Db::name('menu')->insert($datas);
            	$this->success('新增成功', 'admin/menu/index');
			}
			exit;
		}
	
		if($id>0){
			$module = Db::name('menu')->where(array('id'=>$id))->find();
			//$module = Settings_module::get(array('id'=>$id));
		}
		$data['module'] = $module;
		return $this->fetch('/base',['_view'=>'menu/edit','data'=>$data]);
	}
	
}
