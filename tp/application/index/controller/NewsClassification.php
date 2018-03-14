<?php
namespace app\index\controller;
use think\Controller;
use app\index\model\newsClass;

class NewsClassification extends Controller
{
    public function index()
    {
        // 不带任何参数 自动定位当前操作的模板文件
        //  return 'dd';
        // return $this->fetch();
        $newsClassArr = newsClass::select();
        // $this->assign('newsClassArr', $newsClassArr);     
        return $newsClassArr;
    }

}
