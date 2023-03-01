function k = Bar2D2Node_Stiffness(E,A,x1,y1,x2,y2,alpha)
    %单元刚度矩阵的计算: k(4*4)
    %x为导出角度
    L = sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
    x = alpha*pi/180;
    C = cos(x);
    S = sin(x);
    k = E*A/L*[C*C C*S -C*C -C*S;C*S S*S -C*S -S*S;-C*C -C*S C*C...
             C*S; -C*S -S*S C*S S*S];
end