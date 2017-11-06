TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `recibosxdinero_AFTER_INSERT` AFTER INSERT ON `recibosxdinero` FOR EACH ROW BEGIN\n	DECLARE monto FLOAT;\n    SET monto = 0;\n	SELECT monto_actual INTO monto FROM recibosxdinero\n    WHERE id_recibo = NEW.id_recibo;\n	UPDATE cliente SET deuda = monto\n    WHERE id_cliente = NEW.id_cliente;\nEND'
sql_modes=1411383296
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
created=150998566950
