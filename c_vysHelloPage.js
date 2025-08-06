

//a xx 3
class s_vysHelloPage{

  constructor(){
  }
  
  get getName(){
    return `vys Hello World`;
    
  }
  
  
  
  get getDefaultBackgroundColor(){
    return "#ffffff";
    
  }
  
  getHtml = () => {


    return `<b>${this.getName}</b><br>
    <img src="${this.homeUrl}assets/ico_viteyss_32.png"><br>
    This is a npm package<br>
    viteyss-site-hello-wold<br>
    <pre>
    In Menu: ${this.getName}
    Home url: ${this.homeUrl}
    Ver: ${this.instanceOf.ver}

    More ditails in \`./site.json\`
    </pre>`;

  }

  getHtmlAfterLoad = () =>{
    cl(`${this.getName} - getHtmlAfterLoad()`);

  }

  get svgDyno(){
    return '';

  }

  svgDynoAfterLoad(){

  }

  onMessageCallBack = ( r ) => {
    cl( `[cb] ${this.getName} - got msg `);

  }

}

export { s_vysHelloPage };
