# SE Mid-Term Project

本專案為自動化婚禮邀請函管理與文件處理平台，整合 n8n 自動化流程、文件轉換服務。可自動產生並寄送個人化邀請函、收集 RSVP 回覆、同步 Google Sheets，並支援多種自動化與文件轉換應用。專案採用 Docker 部署，易於擴充與維護。

## 專案結構

- `shared/`：共用資料夾，包含婚禮邀請函相關 CSV、workflow、credentials 等。
- `n8n_data/`：n8n 自動化平台的資料與設定。
- `docker-compose.yml`：協調 n8n 服務與資料掛載。
- `init.sh`：n8n 啟動時自動匯入 workflow/credentials 的腳本。

## 主要服務說明

### n8n 自動化平台
- 位置：`docker-compose.yml`、`n8n_data/`、`shared/`
- 功能：
  - 啟動時自動匯入 shared 目錄下的 workflows.json 與 credentials.json。
  - 內建婚禮邀請函自動產生、RSVP 表單、信件寄送、Google Sheets 整合等自動化流程。
- 啟動方式：
  ```bash
  docker compose up -d
  ```
- 預設管理介面：http://localhost:5678

## 共用資料說明
- `shared/couple.csv`：新人基本資料（中英文、婚期、地點等）。
- `shared/guests.csv`：賓客名單與個人化資訊。
- `shared/workflows.json`：n8n 自動化流程設定。
- `shared/credentials.json`：n8n 憑證設定。

## 應用場景
- 自動產生個人化婚禮邀請函（中英文），並自動寄送給賓客。
- 收集 RSVP 回覆並同步至 Google Sheets。
- 文件自動轉換與瀏覽器自動化測試。

## 開發與測試
- 可依需求調整 Dockerfile 或 workflow 設定。
- 若需自訂 workflow，請於 n8n 介面設計後，匯出至 shared/workflows.json。

## 注意事項
- 需自備 Google、OpenRouter 等 API 憑證。
- 若遇到瀏覽器啟動問題，請確認本機已安裝對應瀏覽器。

---