PROJECT = demo

login:
	lean login -u $$QC_USERID -t $$QC_TOKEN
	touch login

local-backtest:
	lean backtest $(PROJECT)

cloud-backtest: login
	lean cloud backtest $(PROJECT) --push --open

debug:
	lean backtest $(PROJECT) --debug ptvsd
