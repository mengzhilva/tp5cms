<?php
namespace app\admin\controller;

use app\admin\model\Settings_module;
use think\Request;
use think\Db;



class Article extends Base
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
		$list = Db::name('article')->where($where)->order($orderby)->paginate($pagesize);;
		$data['list'] = $list;
		$page = $list->render();
		$this->assign('page', $page);
		
		return $this->fetch('/base',['_view'=>'article/list','data'=>$data]);
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
			$classin = Db::name('article_class')->where('id='.$datas['class_id'])->find();
			$datas['class_name'] = $classin['name'];
			if($id>0){
				//update
				$datas['update_time'] = date('Y-m-d H:i:s');
				Db::name('article')->where(array('id'=>$id))->update($datas);
            	$this->success('修改成功', 'admin/article/index');
			}else{
				$datas['add_time'] = date('Y-m-d H:i:s');
				//insert
				Db::name('article')->insert($datas);
            	$this->success('新增成功', 'admin/article/index');
			}
			exit;
		}
	
		if($id>0){
			$module = Db::name('article')->where(array('id'=>$id))->find();
			//$module = Settings_module::get(array('id'=>$id));
		}
		$data['module'] = $module;
		return $this->fetch('/base',['_view'=>'article/edit','data'=>$data]);
	}
	
}
