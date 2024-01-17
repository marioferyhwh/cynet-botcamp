Class cysnet.mario.ws.MiServicio Extends EnsLib.SOAP.Service [ ProcedureBlock ]
{

/// Nombre de servicio web.
Parameter SERVICENAME = "MiServicio";

/// Namespace SOAP para servicio web
Parameter NAMESPACE = "http://tempuri.org";

/// Se utilizarán namespaces de clases referenciadas en WSDL.
Parameter USECLASSNAMESPACES = 1;

Method saludo(nombre As %String) As %String [ WebMethod ]
{
  $$$LOGINFO("Method SALUDO----")
	Quit "Hola "_nombre_" !"
}

Method obtenerPersona(idPer As %Integer) As cysnet.mario.msg.ObtenerPersonaResponse [ WebMethod ]
{
	#dim req As cysnet.mario.msg.ObtenerPersonaRequest
	#dim rsp As cysnet.mario.msg.ObtenerPersonaResponse
	
	set req = ##class(cysnet.mario.msg.ObtenerPersonaRequest).%New()
	set req.idPersona = idPer
	
	do ..SendRequestSync("MiProceso", req, .rsp)
	
	quit rsp
}

}
