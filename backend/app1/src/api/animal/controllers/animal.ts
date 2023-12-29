/**
 * animal controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController("api::animal.animal",
  ({ strapi }) => ({

    async find(ctx) {
        let  { data, meta } = await super.find(ctx);
       // some more logic
       data.forEach(item => {
        console.warn(item);
        console.warn(item.Data_nascimento);
        item.attributes.Idade = calcularIdade(item.attributes.Data_nascimento);
       });
       
       //console.warn(data);
       return { data , meta };
    },
  })

);


function calcularIdade(dataNascimento) {
   // console.warn(dataNascimento);
    if (!dataNascimento) {
        return null; // Retorna null se a data de nascimento for nula
    }
    const dataNascimentoObj = new Date(dataNascimento);
    const dataAtual = new Date();
    const diferencaEmAnos = dataAtual.getFullYear() - dataNascimentoObj.getFullYear();
    // Ajuste para casos em que o aniversário ainda não ocorreu este ano
    if (
        dataNascimentoObj.getMonth() > dataAtual.getMonth() ||
        (dataNascimentoObj.getMonth() === dataAtual.getMonth() && dataNascimentoObj.getDate() > dataAtual.getDate())
    ) {
        return diferencaEmAnos - 1;
    }

    return diferencaEmAnos;
    //teste de edição dentro do container
}

