const db = require('../database/index.js')


getTemplateById = async (template_id) => {
    try {
        const temp = await db.one(`SELECT * FROM template WHERE template_id = $1`, [template_id])
        return temp
<<<<<<< HEAD
    } catch (error) {
        res.status(500).json({
            payload: null,
            msg: error,
            err: true
        })
=======
    }catch(error){
        console.log(error)
>>>>>>> 86ee1484272406125dbe883df808095a73c5ef1e
    }
}


<<<<<<< HEAD
addNewTemplate = async () => {
    try {
        let image = `${req.params.image}`
        let image_name = `${req.params.img_name}`
        let insertQuery = `INSERT INTO template(image, img_name) 
        VALUES($1, $2)`
        let response = await db.none(insertQuery, [image, image_name])
        res.json({
            status: "success",
            message: "template posted"
        });
    } catch (error) {
        res.status(500).json({
            payload: null,
            msg: error,
            err: true
        })
=======
addNewTemplate = async (image, img_name) => {
    try{
        const insertQuery = `INSERT INTO template (image, img_name) 
        VALUES($1, $2) RETURNING *`
        let response = await db.any(insertQuery, [image, img_name])
        return response;
    }catch(error){
     console.log(error)
>>>>>>> 86ee1484272406125dbe883df808095a73c5ef1e
    }
}


// getAll = async () => {
//     return await db.any(`SELECT * FROM template`)
// }



// changeTemplate = async () => {

// }

module.exports = {
<<<<<<< HEAD
    getTemplateById,
    addNewTemplate
=======
getTemplateById,
addNewTemplate,
// getAll
>>>>>>> 86ee1484272406125dbe883df808095a73c5ef1e
}