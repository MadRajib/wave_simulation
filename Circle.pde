class Circle{
  int x;
  int y;
  int SIZE;
  int sz = 0;
  float angle = 0;
  int br = 255;
  
  Circle(int x,int y, int size,float offset){
    this.x = x;
    this.y = y;
    this.SIZE = size;
    this.angle = offset;
  }
  
  void render(){
    fill(br);
    ellipse(this.x,this.y,this.sz,this.sz);
  }
  
  void update(){
    this.sz = (int)(1 + sin(this.angle)*this.SIZE);
    this.br = int(map(this.br,0,this.sz,255,150));
    this.angle+=.02;
    if(this.angle>=360)
      this.angle = 0;
  }
}
