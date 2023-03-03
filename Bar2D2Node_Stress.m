function stress = Bar2D2Node_Stress(E,x1,y1,x2,y2,alpha,u)
    
    L = sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
    x = alpha*pi/180;
    C = cos(x);
    S = sin(x);
    stress = E/L*[-C -S C S]*u;
end
