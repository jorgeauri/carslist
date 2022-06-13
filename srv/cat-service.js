/* const cds = require('@sap/cds')
module.exports = function (){
    this.after ('READ', 'Carros', each => {
        if (each.qtd > 5) {
            each.modelo += ` -- à vista 5% de desconto!`
        }
    })
}  */

/* const cds = require('@sap/cds')
module.exports = function (){
    this.after ('READ', 'Carros', each => {
        if (each.preco > 1000) {
            each.ano += ` -- à vista 5% de desconto!`
        }
    })
}  */

/* const cds = require('@sap/cds')  USAR ESSA
module.exports = function (){
    this.after ('READ', 'Carros', each => {
        if (each.diaria * 30 > each.mensal) {
            each.desconto += `mensal 5% de desconto!`
        }
    })
}  */


module.exports = cds.service.impl(srv => {
    //srv.after ('READ', 'Carros', each => each.diaria * 30 > each.mensal && _addDiscount2(each,5))
    srv.after ('READ', 'Carros', each => {
        if (each.diaria * 30 > each.mensal && each.ano <= 2020){
            addDiscount(each,10)            
        }
        else if (each.diaria * 30 > each.mensal){
            addDiscount(each,5)       
        }
        
    })
  })

  function addDiscount (each,discount) {
        return each.desconto = ` ${discount}% desconto!`
      
  }