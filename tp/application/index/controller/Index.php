<?php
namespace app\index\controller;

use app\index\model\News;
use app\index\model\newsClass;
use think\Controller;

class Index extends Controller
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
    public function getNews($newsRid = '', $num = 10)
    {
        $newsClassArr = News::where('rid', $newsRid)->limit($num)->select();

        return $newsClassArr;
    }

    public function detail($id = '0')
    {
        $article = News::where('id', $id)->find();
        return $article;
    }
    public function all($rid = '0')
    {
        $list = News::where('rid', $rid)->select();
        return $list;
    }
}
