package com.cupcake.rockpaperscissors.services.navigation
{
    import com.core.domain.services.navigation.Screen;
    
    public class HudScreen extends Screen implements IHudScreen
    {
        function HudScreen(id:String, flag:uint = 0)
        {
            super(id, flag);
        }
    }
}
