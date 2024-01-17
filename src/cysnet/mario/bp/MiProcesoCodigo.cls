Class cysnet.mario.bp.MiProcesoCodigo Extends Ens.BusinessProcess
{

Method OnRequest(pRequest As cysnet.mario.msg.ObtenerPersonaRequest, Output pResponse As cysnet.mario.msg.ObtenerPersonaResponse) As %Status
{
  Set pResponse = ##class(cysnet.mario.msg.ObtenerPersonaResponse).%New()
  If (pRequest.idPersona > 0) {
    Do ..SendRequestSync("DBCache", pRequest, .pResponse)
  }
  Quit $$$OK
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
