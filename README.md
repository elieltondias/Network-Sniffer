# Network Sniffer

Este é um código simples, escrito em C, que permite a captura de pacotes de rede.
Ideal para quem deseja analisar o tráfego de rede, realizar diagnósticos ou aprender sobre o funcionamento interno das comunicações de dados.

## Releases

A versão mais recente para Linux x86_64 pode ser baixada na página de [releases](https://github.com/elieltondias/Network-Sniffer/releases/latest).

O binário depende da biblioteca libpcap:

- Debian/Ubuntu: `sudo apt install libpcap0.8`
- Fedora: `sudo dnf install libpcap`
- Arch: `sudo pacman -S libpcap`

Após baixar e extrair o arquivo `.tar.gz`, execute:

```bash
tar -xzf network-sniffer-0.0.1-linux-x86_64.tar.gz
cd network-sniffer-0.0.1-linux-x86_64
sudo ./sniffer
```

## Como Usar

Certifique-se de ter a biblioteca libpcap-dev ou libpcap-devel (depende da distribuição) instalada.

Certifique-se de ter um compilador C instalado no seu sistema.

Este código suporta a captura de pacotes de rede em tempo real.

A interface de rede pode ser alterada no arquivo `src/sniffer.c`.

Para compilar o código-fonte, execute o seguinte comando no terminal:

1. **Compilação:**

   ```bash
   gcc -O2 -o sniffer src/sniffer.c -lpcap
   ```

2. **Execução:**

   ```bash
   sudo ./sniffer
   ```
