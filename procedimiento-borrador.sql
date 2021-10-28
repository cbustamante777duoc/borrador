create or replace NONEDITIONABLE procedure ListarMerma (cursorMemoria out SYS_REFCURSOR)
as
BEGIN
    Open cursorMemoria For 
        SELECT 
            a.fecha AS FECHA_MERMA,
            a.nombre AS NOMBRE_MERMA,
            a.cantidad AS CANTIDAD_MERMA,
            b.descripcion AS DESCRIPCION_INSUMO,
            b.fecha_vencimiento AS FECHA_VENCIMIENTO,
            b.stock AS STOCK
        FROM merma a join insumo b
            on a.id_insumo = b.id_insumo;
END;