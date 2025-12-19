"""
LLM Adapter Module
Wraps various LLM providers (Antigravity, OpenAI, Ollama) into a unified interface.
"""
import logging

class LLMAdapter:
    """
    Standardized adapter for Language Model interactions.
    """
    def __init__(self, provider: str = "antigravity") -> None:
        """
        Initialize the LLM adapter.
        
        Args:
            provider (str): The backend provider ('antigravity', 'cursor', 'ollama').
        """
        self.provider = provider
        self.logger = logging.getLogger(__name__)
        

    def _load_persona_rule(self, persona: str) -> str:
        """
        Load the system directive from the corresponding rule file.
        """
        # Map persona names (e.g. "The Executor") to filenames (e.g. executor.md)
        rule_map = {
            "builder": "builder.md",
            "the builder": "builder.md",
            "executor": "builder.md", # alias for back-compat
            "the executor": "builder.md",
            "planner": "planner.md",
            "the planner": "planner.md",
            "visualizer": "visualizer.md",
            "the visualizer": "visualizer.md",
            "tester": "tester.md",
            "the tester": "tester.md",
            "protector": "protector.md",
            "the protector": "protector.md",
            "sentinel": "protector.md", # alias
            "the sentinel": "protector.md",
            "visionary": "visionary.md",
            "the visionary": "visionary.md",
            "dreamer": "dreamer.md",
            "the dreamer": "dreamer.md",
            "investor": "investor.md",
            "the investor": "investor.md",
            "auditor": "auditor.md",
            "the auditor": "auditor.md",
            "critic": "critic.md",
            "the critic": "critic.md",
            "updater": "updater.md",
            "the updater": "updater.md",
            "yapper": "yapper.md",
            "the yapper": "yapper.md",
            "starter": "starter.md",
            "the starter": "starter.md",
            "genesis": "starter.md", # alias
            "the genesis": "starter.md"
        }
        
        normalized_persona = persona.lower().strip()
        filename = rule_map.get(normalized_persona)
        
        if not filename:
            self.logger.warning(f"No rule file found for persona: {persona}")
            return ""
            
        try:
            # Assuming running from project root
            with open(f".agent/rules/{filename}", "r", encoding="utf-8") as f:
                return f.read()
        except FileNotFoundError:
            self.logger.error(f"Rule file not found: .agent/rules/{filename}")
            return ""

    def complete(self, prompt: str, context: str, persona: str) -> str:
        """
        Generate a completion based on the prompt and context.
        
        Args:
            prompt (str): The main input prompt.
            context (str): Additional context (file contents, history).
            persona (str): The agent persona definition.
            
        Returns:
            str: The generated response.
        """
        # Ingest System Directive from Governance Layer
        system_directive = self._load_persona_rule(persona)
        full_context = f"{system_directive}\n\n=== CONTEXT ===\n{context}"
        
        if self.provider == "antigravity":
            # Proprietary SDK hook would go here
            self.logger.info(f"Using Antigravity Provider with Persona: {persona}")
            return f"[ANTIGRAVITY_MOCK_RESPONSE] for: {prompt[:50]}..."
            
        elif self.provider == "cursor":
            # Stdout/Stdin hooks for Cursor
            pass
            
        elif self.provider == "ollama":
            # Local API implementation
            pass
            
        return ""
