<?php
/**
 * Created by JetBrains PhpStorm.
 * User: vitamin
 * Date: 16.02.13
 * Time: 19:45
 * To change this template use File | Settings | File Templates.
 */
 
class Controller {

    public $model;
    public $view;

    function __construct()
    {
        $this->view = new View();
    }

    function action_index()
    {
    }
}