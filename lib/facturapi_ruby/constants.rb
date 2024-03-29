module FacturapiRuby
  PAYMENT_FORM = {
    EFECTIVO: "01",
    CHEQUE_NOMINATIVO: "02",
    TRANSFERENCIA_ELECTRONICA: "03",
    TARJETA_DE_CREDITO: "04",
    MONEDERO_ELECTRONICO: "05",
    DINERO_ELECTRONICO: "06",
    VALES_DE_DESPENSA: "08",
    DACION_EN_PAGO: "12",
    SUBROGACION: "13",
    CONSIGNACION: "14",
    CONDONACION: "15",
    COMPENSACION: "17",
    NOVACION: "23",
    CONFUSION: "24",
    REMISION_DE_DEUDA: "25",
    PRESCRIPCION_O_CADUCIDAD: "26",
    A_SATISFACCION_DEL_ACREEDOR: "27",
    TARJETA_DE_DEBITO: "28",
    TARJETA_DE_SERVICIOS: "29",
    POR_DEFINIR: "99"
  }

  TAX_TYPE = {
    IVA: "IVA",
    IEPS: "IEPS",
    ISR: "ISR"
  }
  
  PAYMENT_METHOD = {
    PAGO_EN_UNA_EXHIBICION: "PUE",
    PAGO_EN_PARCIALIDADES_DIFERIDO: "PPD"
  }

  INVOICE_USE =  {
    ADQUISICION_MERCANCIAS: "G01",
    DEVOLUCIONES_DESCUENTOS_BONIFICACIONES: "G02",
    GASTOS_EN_GENERAL: "G03",
    CONSTRUCCIONES: "I01",
    MOBILIARIO_Y_EQUIPO_DE_OFICINA: "I02",
    EQUIPO_DE_TRANSPORTE: "I03",
    EQUIPO_DE_COMPUTO: "I04",
    DADOS_TROQUELES_HERRAMENTAL: "I05",
    COMUNICACIONES_TELEFONICAS: "I06",
    COMUNICACIONES_SATELITALES: "I07",
    OTRA_MAQUINARIA: "I08",
    HONORARIOS_MEDICOS: "D01",
    GASTOS_MEDICOS_POR_INCAPACIDAD: "D02",
    GASTOS_FUNERALES: "D03",
    DONATIVOS: "D04",
    INTERESES_POR_CREDITOS_HIPOTECARIOS: "D05",
    APORTACIONES_VOLUNTARIAS_SAR: "D06",
    PRIMA_SEGUROS_GASTOS_MEDICOS: "D07",
    GASTOS_TRANSPORTACION_ESCOLAR: "D08",
    CUENTAS_AHORRO_PENSIONES: "D09",
    SERVICIOS_EDUCATIVOS: "D10",
    POR_DEFINIR: "P01"
  }
  
  INVOICE_TYPE = {
    INGRESO: "I",
    EGRESO: "E",
    TRASLADO: "T",
    NOMINA: "N",
    PAGO: "P"
  }

  INVOICE_RELATION = {
    NOTA_DE_CREDITO: "01",
    NOTA_DE_DEBITO: "02",
    DELOVUCION_DE_MERCANCIA: "03",
    SUSTITUCION_DE_CFDI_PREVIOS: "04",
    TRASLADOS_DE_MERCANCIA_FACTURADOS_PREVIAMENTE: "05",
    FACTURA_POR_TRASLADOS_PREVIOS: "06",
    APLICACION_DE_ANTICIPO: "07",
    PAGOS_EN_PARCIALIDADES: "08",
    PAGOS_DIFERIDOS: "09"
  }

  TAX_SYSTEM = {
    GENERAL_LEY_DE_PERSONAS_MORALES: "601",
    PERSONAS_MORALES_CON_FINES_NO_LUCRATIVOS: "603",
    SUELDOS_Y_SALARIOS: "605",
    ARRENDAMIENTO: "606",
    DEMAS_INGRESOS: "608",
    CONSOLIDACION: "609",
    RESIDENTES_EN_EL_EXTRANJERO: "610",
    INGRESOS_POR_DIVIDENDOS_SOCIOS_Y_ACCIONISTAS: "611",
    PERSONAS_FISICAS_CON_ACTIVIDADES_EMPRESARIALES_Y_PROFESIONALES: "612",
    INGRESOS_POR_INTERESES: "614",
    SIN_OBLIGACIONES_FISCALES: "616",
    SOCIEDADES_COOPERATIVAS_DE_PRODUCCION: "620",
    REGIMEN_DE_INCORPORACION_FISCAL: "621",
    ACTIVIDADES_AGRICOLAS_GANADERAS_SILVICOLAS_Y_PESQUERAS: "622",
    OPCIONAL_PARA_GRUPOS_DE_SOCIEDADES: "623",
    COORDINADOS: "624",
    HIDROCARBUROS: "628",
    REGIMEN_DE_ENAJENACION_O_ADQUISICION_DE_BIENES: "607",
    PREFERENTES_Y_EMPRESAS_MULTINACIONALES: "629",
    ENAJENACION_DE_ACCIONES_EN_BOLSA_DE_VALORES: "630",
    REGIMEN_DE_LOS_INGRESOS_POR_OBTENCION_DE_PREMIOS: "615"
  }

  REGIMEN_FISCAL = {
    '603':	'Personas Morales con Fines no Lucrativos',
    '605':	'Sueldos y Salarios e Ingresos Asimilados a Salarios',
    '606':	'Arrendamiento',
    '608':	'Demás ingresos',
    '609':	'Consolidación',
    '610':	'Residentes en el Extranjero sin Establecimiento Permanente en México',
    '611':	'Ingresos por Dividendos (socios y accionistas)',
    '612':	'Personas Físicas con Actividades Empresariales y Profesionales',
    '614':	'Ingresos por intereses',
    '616':	'Sin obligaciones fiscales',
    '620':	'Sociedades Cooperativas de Producción que optan por diferir sus ingresos',
    '621':	'Incorporación Fiscal',
    '622':	'Actividades Agrícolas, Ganaderas, Silvícolas y Pesqueras',
    '623':	'Opcional para Grupos de Sociedades',
    '624':	'Coordinados',
    '628':	'Hidrocarburos',
    '607':	'Régimen de Enajenación o Adquisición de Bienes',
    '629':	'De los Regímenes Fiscales Preferentes y de las Empresas Multinacionales',
    '630':	'Enajenación de acciones en bolsa de valores',
    '615':	'Régimen de los ingresos por obtención de premios',
    '625':	'Régimen de las Actividades Empresariales con ingresos a través de Plataformas Tecnológicas',
    '626':	'Régimen Simplificado de Confianza',
  }.freeze

  CANCELACION_FISCAL = {
    '01': 'Comprobante emitido con errores con relación',
    '02': 'Comprobante emitido con errores sin relación',
    '03': 'No se llevó a cabo la operación',
    '04': 'Operación nominativa relacionada en la factura global',
  }.freeze

  TAXABILITY = {
    '01': 'No objeto de impuesto',
    '02': 'Sí objeto de impuesto',
    '03': 'Sí objeto de impuesto, pero no obligado a desglose',
  }.freeze
end
