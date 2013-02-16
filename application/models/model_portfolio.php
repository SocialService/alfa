<?php
/**
 * Created by JetBrains PhpStorm.
 * User: vitamin
 * Date: 16.02.13
 * Time: 22:23
 * To change this template use File | Settings | File Templates.
 */
class Model_Portfolio extends Model
{
    public function get_data()
    {
        return array(

            array(
                'Year' => '2012',
                'Site' => 'http://DunkelBeer.ru',
                'Description' => 'Промо-сайт темного пива Dunkel от немецкого производителя Löwenbraü выпускаемого в России пивоваренной компанией "CАН ИнБев".'
            ),
            array(
                'Year' => '2012',
                'Site' => 'http://ZopoMobile.ru',
                'Description' => 'Русскоязычный каталог китайских телефонов компании Zopo на базе Android OS и аксессуаров к ним.'
            ),
            // todo
        );
    }
}
