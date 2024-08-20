import logging
import logzero

import admin

from logzero import logger
version = admin.version                 #Software version
loglevel = logging.INFO
loglevels = [logging.DEBUG, logging.INFO, logging.WARNING, logging.ERROR]
logzero.loglevel(loglevels[loglevel])   #Choices in order; DEBUG, INFO, WARNING, ERROR
logzero.logfile("./logfile.log", maxBytes=1e6, backupCount=1)
logger.info("\n\nStartup of metar-v4.py Script, Version " + version)
logger.info("Log Level Set To: " + str(loglevels[loglevel]))