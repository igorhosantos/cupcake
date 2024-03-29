package com.cupcake.rockpaperscissors.main.controller
{
    import com.core.domain.services.controller.ScreenController;
    import com.core.domain.services.view.IMainContent;
    import com.core.domain.services.view.IGeneric;
    import com.core.domain.services.view.IHud;
    import com.core.domain.services.view.ILoader;
    import com.core.domain.services.view.IView;
    import com.core.utils.Singleton;
    import com.cupcake.rockpaperscissors.main.view.MainView;
    
    public class MainController extends ScreenController
    {
        static public var ME:MainController;
        
        function MainController(autoCreateView:Boolean = false)
        {
            ME = Singleton.enforce(ME, this);
            if (autoCreateView) createView();
        }
        
        override public function dispose():void
        {
            ME = null;
            super.dispose();
        }
        
        override public function getViewClass():Class
        {
            return MainView;
        }
        
        override public function toString():String
        {
            return "[MainController(view: " + super.getView() + ")]";
        }
        
        private var view:MainView;
        
        override public function getView():IView
        {
            return view = super.getView() as MainView;
        }
        
        public function addMainContent(mainContent:IMainContent):void
        {
            view.addMainContent(mainContent);
        }
    
        public function containsMainContent(mainContent:IMainContent):Boolean
        {
            return view.containsMainContent(mainContent);
        }
        
        public function addHud(hud:IHud):void
        {
            view.addHud(hud);
        }
    
        public function containsHud(hud:IHud):Boolean
        {
            return view.containsHud(hud);
        }
        
        public function addGeneric(generic:IGeneric):void
        {
            view.addGeneric(generic);
        }
    
        public function containsGeneric(generic:IGeneric):Boolean
        {
            return view.containsGeneric(generic);
        }
        
        public function addLoader(loader:ILoader):void
        {
            view.addLoader(loader);
        }
    
        public function containsLoader(loader:ILoader):void
        {
            view.containsLoader(loader);
        }
        
    }
}
