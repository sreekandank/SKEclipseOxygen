package com.sk2;  
import java.util.ListResourceBundle;  
public class BundleClass extends ListResourceBundle {  
    public Object[][] getContents() {  
        return contents;  
    }  
static final Object[][] contents = { { "vegetable.Potato", "Potato" },  
            { "vegetable.Tomato", "Tomato" }, { "vegetable.Carrot", "Carrot" }, };  
}  

