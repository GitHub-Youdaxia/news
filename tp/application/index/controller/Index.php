<?php
namespace app\index\controller;

class Index
{
    public function index()
    {
        return 'index1';
    }
    public function index2($name = 'ddddd')
    {
        return 'hello,' . $name;
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
}
