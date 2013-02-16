<?php
/**
 * Created by JetBrains PhpStorm.
 * User: vitamin
 * Date: 16.02.13
 * Time: 22:00
 * To change this template use File | Settings | File Templates.
 */
class Controller_Main extends Controller
{
    function action_index()
    {
        $this->view->render('main_view.php', 'template_view.php');
    }
}
