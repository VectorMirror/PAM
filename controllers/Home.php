<?php
    class Home extends Controllers{
        public function __construct(){
            parent::__construct();
        }

        public function home ($params){
            $data['page_title'] = '.:Inicio Sesión:.';
            $data['tag_page'] = 'Home';
            $data['page_name'] = 'home';
            $this->views->getView($this, 'home', $data);
        }
    }
?>