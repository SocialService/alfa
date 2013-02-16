<?php
/**
 * Created by JetBrains PhpStorm.
 * User: vitamin
 * Date: 16.02.13
 * Time: 19:45
 * To change this template use File | Settings | File Templates.
 */
 
class View
{
    //public $template_view; // здесь можно указать общий вид по умолчанию.

    function render($content_view, $template_view, $data = null)
    {
        /*
        if(is_array($data)) {
            // преобразуем элементы массива в переменные
            extract($data);
        }
        */

        include 'application/views/'.$template_view;
    }
}