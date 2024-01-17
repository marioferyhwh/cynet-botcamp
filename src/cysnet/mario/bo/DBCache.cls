Class cysnet.mario.bo.DBCache Extends Ens.BusinessOperation
{

/// Método que obtiene los datos de una persona a partir de su ID
Method obtenerPersona(pRequest As cysnet.mario.msg.ObtenerPersonaRequest, Output pResponse As cysnet.mario.msg.ObtenerPersonaResponse) As %Status
{
    set pResponse = ##class(cysnet.mario.msg.ObtenerPersonaResponse).%New()

    set stm = ##class(%SQL.Statement).%New()
    do stm.%Prepare("SELECT nombre, apellidos, direccion, codPostal FROM cysnet_mario_data.Persona WHERE ID = ?")

    set rs = stm.%Execute(pRequest.idPersona)

    if (rs.%Next()) {
        set pResponse.nombre = rs.nombre
        set pResponse.apellidos = rs.apellidos
        set pResponse.direccion = rs.direccion
        set pResponse.codPostal = rs.codPostal
    }else{
        Set pResponse.mensaje = "La persona con ID "_pRequest.idPersona_" no existe."
    }
    
    quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="cysnet.mario.msg.ObtenerPersonaRequest">
        <Method>obtenerPersona</Method>
    </MapItem>
</MapItems>
}

}
